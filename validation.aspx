<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="Hackathon_App.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Validation Form</title>
    <link href="Style/StyleSheet1.css" rel="stylesheet" />
    <script>
        const validatePin = document.querySelector('#validate_pin');
        const pinCheck = document.querySelector('#pin');

        validatePin.addEventListener('change', () => {
            if (validatePin.checked) {
                pinCheck.required = true;
            }
            else {
                pinCheck.required = false;
            }
        });
        
    </script>
</head>

<body>
    <h2>User Validation Form</h2>
    <form id="form1" runat="server">
        <div>
            <label for="username">Username :</label>
            <input type="text" id="username" name="username" minlength="6" maxlength="8" required /><br />

            <label for="pin">Pin :</label>
            <input type="text" id="pin" name="pin" pattern="[A-Za-z0-9]{1,}" required /><br />

            <label for="state">State :</label>
            <select id="country-state" name="country-state">
                <option value="">Select state</option>
                <option value="AN">Andaman and Nicobar Islands</option>
                <option value="AP">Andhra Pradesh</option>
                <option value="AR">Arunachal Pradesh</option>
                <option value="AS">Assam</option>
                <option value="BR">Bihar</option>
                <option value="CH">Chandigarh</option>
                <option value="CT">Chhattisgarh</option>
                <option value="DN">Dadra and Nagar Haveli</option>
                <option value="DD">Daman and Diu</option>
                <option value="DL">Delhi</option>
                <option value="GA">Goa</option>
                <option value="GJ">Gujarat</option>
                <option value="HR">Haryana</option>
                <option value="HP">Himachal Pradesh</option>
                <option value="JK">Jammu and Kashmir</option>
                <option value="JH">Jharkhand</option>
                <option value="KA">Karnataka</option>
                <option value="KL">Kerala</option>
                <option value="LA">Ladakh</option>
                <option value="LD">Lakshadweep</option>
                <option value="MP">Madhya Pradesh</option>
                <option value="MH">Maharashtra</option>
                <option value="MN">Manipur</option>
                <option value="ML">Meghalaya</option>
                <option value="MZ">Mizoram</option>
                <option value="NL">Nagaland</option>
                <option value="OR">Odisha</option>
                <option value="PY">Puducherry</option>
                <option value="PB">Punjab</option>
                <option value="RJ">Rajasthan</option>
                <option value="SK">Sikkim</option>
                <option value="TN">Tamil Nadu</option>
                <option value="TG">Telangana</option>
                <option value="TR">Tripura</option>
                <option value="UP">Uttar Pradesh</option>
                <option value="UT">Uttarakhand</option>
                <option value="WB">West Bengal</option>
            </select><br/>

            <label for="validationpin">Validate Pin :</label>
            <input type="checkbox" id="validate_pin" name="validate_pin" />

     
            <br/>

            <label>Choose one:</label><br>
            <label for="milk"><input type="radio" id="milk" name ="milk" value="milk" />Milk</label><br />
            <label for="butter"><input type="radio" id="butter" name ="butter" value="butter" />Butter</label><br />
            <label for="cheese"><input type="radio" id="cheese" name ="cheese" value="cheese" />Cheese</label><br />

            <input type="submit" value="Check Form" />
            <label id="lbldisplay"/>
        </div>
    </form>
</body>
</html>
