from flask import Flask, request, jsonify, redirect
import requests

app = Flask(__name__)

# Replace with your sandbox credentials
STORE_ID = 'tkaruk67f22a9723164'
STORE_PASSWORD = 'karuk67f22a9723164@ssl'
SSLCOMMERZ_URL = 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php'

@app.route('/initiate-payment', methods=['POST'])
def initiate_payment():
    data = request.json

    # Make sure cart and customer info is sent from frontend
    cart = data.get('cart')
    customer = data.get('customer')

    total_amount = sum(item['price'] * item['quantity'] for item in cart)

    payload = {
        'store_id': STORE_ID,
        'store_passwd': STORE_PASSWORD,
        'total_amount': total_amount,
        'currency': 'BDT',
        'tran_id': 'karukunjo_' + str(data.get('tran_id', '123456')),
        'success_url': 'https://yourgithubusername.github.io/success.html',
        'fail_url': 'https://yourgithubusername.github.io/fail.html',
        'cancel_url': 'https://yourgithubusername.github.io/cancel.html',
        'cus_name': customer['name'],
        'cus_email': 'karukunjo@example.com',
        'cus_add1': customer['address'],
        'cus_phone': customer['phone'],
        'cus_city': customer['city'],
        'cus_postcode': customer['postal'],
        'shipping_method': 'NO',
        'product_name': 'Karukunjo Products',
        'product_category': 'Handmade',
        'product_profile': 'general'
    }

    response = requests.post(SSLCOMMERZ_URL, data=payload)
    res_data = response.json()

    if res_data['status'] == 'SUCCESS':
        return jsonify({'redirect_url': res_data['GatewayPageURL']})
    else:
        return jsonify({'error': 'Payment initiation failed'}), 500

if __name__ == '__main__':
    app.run(debug=True)
