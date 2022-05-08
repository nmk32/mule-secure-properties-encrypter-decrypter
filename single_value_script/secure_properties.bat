:: Batch script to encrypt or decrypt mule secure properties
@ECHO OFF
rem #-------------------------------------------------------------------------------------------#
rem # Name         = Mule Secure properties encrypter/Decrypter v1.0                  			#
rem # Reference    = https://docs.mulesoft.com/mule-runtime/4.2/secure-configuration-properties #
rem # Author       = https://github.com/nmk32                                          			#
rem # LinkedIn     = https://www.linkedin.com/in/nandamurimanikanta/                  			#
rem # Tested On    = Windows 10 Pro                     				              			#
rem # Requirements = Oracle JDK,Adopt JDK, any other JDK	                        			#
rem #-------------------------------------------------------------------------------------------#
TITLE Mule Secure Properties Encrypter/Decrypter
ECHO **********************************************************************
ECHO *                                                                    *
ECHO *                         (((((((((((((((((((                        *
ECHO *                     (((((                 ((((#                    *
ECHO *                  ^&(((                        *(((                  *
ECHO *                ^&(((                             (((                *
ECHO *               (((     (((%%               (((#     (((              *
ECHO *              ((     (((((((             (((((((    (((             *
ECHO *             ((     (((((((((           (((((((((     ((            *
ECHO *            ((    #(((((((((((        #(((((((((((    (((           *
ECHO *           #((    ((((((((((((((     ((((((((((((((    ((           *
ECHO *           ((    ((((((  /(((((((   (((((((  /((((((    ((          *
ECHO *           ((    ((((((    (((((((^&(((((((    ((((((   ((           *
ECHO *           ((    (((((      ((((((((((((*     ((((((    ((          *
ECHO *           ((    ((((((      *(((((((((       ((((((    ((          *
ECHO *           ((    ((((((        (((((((        ((((((   (((          *
ECHO *            ((    ((((((                     ((((((    ((           *
ECHO *            ((#    ((((((#                 (((((((    ((            *
ECHO *             ((#    ((((((((             ((((((((    (((            *
ECHO *              (((    (((((((              (((((     ((.             *
ECHO *                ((      (((               (((     #((               *
ECHO *                 /((                            (((                 *
ECHO *                    (((                      ^&(((                   *
ECHO *                      *((((^&             ^&((((                      *
ECHO *                           ((((((((((((((/                          *
ECHO **********************************************************************

REM #You can modify your choice of alogirthm and mode below in line 41,42
SET /p key="Enter your key: "
SET  algorithm=Blowfish
SET  mode=CBC
GOTO options
REM #End customization


:options
ECHO #-------------------------------------------#
ECHO #  Please select your option                #
ECHO #   1.Encrypt                               #
ECHO #   2.Decrypt                               #
ECHO #-------------------------------------------#
set /p op=Your option:
::Making choice based on selection
IF "%op%"=="1" GOTO encrypt_single_value
IF "%op%"=="2" GOTO decrypt_single_value


REM #--------------Encryption function--------------#
:encrypt_single_value
SET /p value="Enter value to encrypt: "
(java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt %algorithm% %mode% %key% %value%) | clip
ECHO Your encrypted value has been copied to clipboard.
ECHO -------------------------------------------------
GOTO end

REM #--------------Encryption function END--------------#

REM #--------------Decryption function--------------#
:decrypt_single_value
SET /p value="Enter value to decrypt: "
(java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string decrypt %algorithm% %mode% %key% %value%)| clip
ECHO Your Decrypted value has been copied to clipboard.
ECHO -------------------------------------------------
GOTO end

REM #--------------Decryption function END--------------#


:end
GOTO options