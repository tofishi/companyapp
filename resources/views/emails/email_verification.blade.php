<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <title></title>

        <style type="text/css">
            table         {mso-table-lspace:0pt;mso-table-rspace:0pt;}
            td,th	  {border-collapse:collapse;}
            td a img	  {text-decoration:none;border:none;}
        </style>


    </head>

    <body>
        <table align="center" cellspacing="0" cellpadding="0" width="730" style="table-layout:fixed;margin:0 auto;border:1px solid #e0dfdf;border-collapse:collapse;padding:50px;font-family:Tahoma, Geneva, sans-serif; font-size:15px">
            <tbody>
            <tr bgcolor="#F0F0F0">
                <td valign="middle" align="center" style="padding:10px">
                    <img vspace="0" hspace="0" border="0" align="center" width="150" src="{{asset('assets/img/logo.png')}}" class="logo"  />
                </td>
            </tr>
            <tr>
                <td valign="top" style="border:1px solid #e0dfdf; padding:15px;">
                    <p style="margin-bottom: 0;">Hi {{!empty($data['name']) ? $data['name'] : ''}},</p>
                    <p>Thank you for registering with our service. To complete your registration, please use the following One-Time Password (OTP):</p>
                    <h2>{{ $data['verification_code'] }}</h2>
                    <p>Please enter this OTP on the vification page to verify your email address.</p>

                    <p>If you did not register on our platform, you can safely ignore this email.</p>

                    <p>Best regards,<br>
                        Your Company Name</p>
                    </td>
            </tr>
            <tr bgcolor="#000">
                <td align="center" style="padding:10px 15px; color: #fff; font-size: 13px;">
                
                <span>Copyright @ {{date("Y")}}. All rights reserved.</span><br>
                 <span>Marketing partner: XXXXXXXXX <a href="www.integratedmarketing.pro" style="color: #fff;">www.XXXXXXX.XXX</a></span>
                </td>
            </tr>
            </tbody>
        </table>
    </body>
</html>

