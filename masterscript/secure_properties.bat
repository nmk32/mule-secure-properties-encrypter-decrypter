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

REM #You can modify your choice of alogirthm and mode below in line 41 and 42
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
IF "%op%"=="1" GOTO encrypt
IF "%op%"=="2" GOTO decrypt

REM #-------Encryption options-------------------#
:encrypt
ECHO #-------------------------------------------#
ECHO #  Please select your option                # 	
ECHO #    1.Encrypt a single text value          #
ECHO #    2.Encrypt properties inside a file     #
ECHO #    3.Encrypt entire file                  #
ECHO #-------------------------------------------#
set /p op=Select option:
IF "%op%"=="1" GOTO encrypt_single_value
IF "%op%"=="2" GOTO encrypt_properties_in_file
IF "%op%"=="3" GOTO encrypt_entire_file
REM #-------Encryption options END---------------#

REM #-------Decryption options-------------------#
:decrypt
ECHO #-------------------------------------------#
ECHO #  Please select your option                # 	
ECHO #    1.Decrypt a single text value          #
ECHO #    2.Decrypt properties inside a file     #
ECHO #    3.Decrypt entire file                  #
ECHO #-------------------------------------------#
set /p op=Select option:
IF "%op%"=="1" GOTO decrypt_single_value
IF "%op%"=="2" GOTO decrypt_properties_in_file
IF "%op%"=="3" GOTO decrypt_entire_file
REM #-------Decryption options END-------------------#



REM #--------------Encryption functions--------------#
:encrypt_single_value
SET /p value="Enter value to encrypt: "
(java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt %algorithm% %mode% %key% %value%) | clip
ECHO Your encrypted value has been copied to clipboard.
ECHO -------------------------------------------------
GOTO end

:encrypt_properties_in_file
SET /p inputfile="Enter your input file absolute path :"
SET /p outputfile="Enter your output file absolute path :"
java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool file encrypt %algorithm% %mode% %key% %inputfile% %outputfile%
ECHO Your properties in input file is encrypted. Check output file location.
ECHO -------------------------------------------------
GOTO end

:encrypt_entire_file
SET /p inputfile="Enter your input file absolute path :"
SET /p outputfile="Enter your output file absolute path :"
java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool file-level encrypt %algorithm% %mode% %key% %inputfile% %outputfile%
ECHO Your input file is encrypted. Check output file location.
ECHO -------------------------------------------------
GOTO end
REM #--------------Encryption functions END--------------#

REM #--------------Decryption functions--------------#
:decrypt_single_value
SET /p value="Enter value to decrypt: "
(java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string decrypt %algorithm% %mode% %key% %value%)| clip
ECHO Your Decrypted value has been copied to clipboard.
ECHO -------------------------------------------------
GOTO end

:decrypt_properties_in_file
SET /p inputfile="Enter your input file absolute path :"
SET /p outputfile="Enter your output file absolute path :"
java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool file decrypt %algorithm% %mode% %key% %inputfile% %outputfile%
ECHO Your properties in input file is decrypted. Check output file location.
ECHO -------------------------------------------------
GOTO end

:decrypt_entire_file
SET /p inputfile="Enter your input file absolute path :"
SET /p outputfile="Enter your output file absolute path :"
java -cp ./secure_property_jar_file/secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool file-level decrypt %algorithm% %mode% %key% %inputfile% %outputfile%
ECHO Your input file is decrypted. Check output file location.
ECHO -------------------------------------------------
GOTO end
REM #--------------Decryption functions END--------------#


:end
GOTO options