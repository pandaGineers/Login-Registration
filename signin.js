
import { initializeApp } from "https://www.gstatic.com/firebasejs/11.4.0/firebase-app.js";
import { getAuth, signInWithPopup, GoogleAuthProvider } from "https://www.gstatic.com/firebasejs/11.4.0/firebase-auth.js";
//import { getAnalytics } from "https://www.gstatic.com/firebasejs/11.4.0/firebase-analytics.js";

const firebaseConfig = {
  apiKey: "AIzaSyDkobRtI5zj4W3sPlYKSmErUatgxpsZNgM",
  authDomain: "karukunjo-a1c68.firebaseapp.com",
  projectId: "karukunjo-a1c68",
  storageBucket: "karukunjo-a1c68.appspot.com",
  messagingSenderId: "222957509578",
  appId: "1:222957509578:web:874d74cf1302f3430b8d33",
  measurementId: "G-HZ5MLC6MFR"
};


const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
auth.languageCode = 'en';


const provider = new GoogleAuthProvider();
//provider.addScope('https://www.googleapis.com/auth/contacts.readonly');


//const analytics = getAnalytics(app);

const googleLogin = document.getElementById("google-sign-btn");


if (googleLogin) {
  googleLogin.addEventListener("click", function () {
    signInWithPopup(auth, provider)
      .then((result) => {
        const user = result.user;
        console.log("User logged in:", user);
        window.location.href = "Login-Registration/home.html";
      })
      .catch((error) => {
        console.error("Error during login:", error.message);
      });
  });
} else {
  console.error("Google Sign-In button not found in HTML.");
}


