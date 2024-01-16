import "./styles/app.css";
//
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import { HelmetProvider } from "react-helmet-async";

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
    <div className="flex flex-1 items-center justify-center h-screen bg-black">
        <h1 className="text-3xl text-gray-50">Successful model installation</h1>
    </div>
);
