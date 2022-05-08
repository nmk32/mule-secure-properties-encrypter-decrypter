<div id="top"></div>




<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<br />
<div align="center">
 <h3 align="center">Mule Secure Properties Encrypter/ Decrypter</h3>
  <p align="center">
    Created for Windows users who want to encrypt or decrypt their properties for usage on MuleSoft Platform.
    <br />
    <a href="https://github.com/nmk32/mule-secure-properties-encrypter-decrypter/wiki"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/nmk32/mule-secure-properties-encrypter-decrypter">View Demo</a>
    ·
    <a href="https://github.com/nmk32/mule-secure-properties-encrypter-decrypter/issues">Report Bug</a>
    ·
    <a href="https://github.com/nmk32/mule-secure-properties-encrypter-decrypter/issues">Request Feature</a>
  </p>
</div>
<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>
<!-- ABOUT THE PROJECT -->

## About The Project

You can encrypt and decrypt properties that are used in MuleSoft platform using this script.

These features are facilitated by Mulesoft secure properties Jar file. 
This script is a way to avoid manual command run's everytime you want to encrypt or decrypt without using the Mulesoft Properties Editor in Anypoint Studio.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Batch Script](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands)


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

You should have a JDK installed in your system to run this script

### Prerequisites

You can install OpenJDK for free from here.
* Adoptium
  ``` 
  https://adoptium.net/
  ```

### Installation

1. Install any JDK from above link or from your enterprise marketplace
2. Clone the repo
   ```
   git clone https://github.com/nmk32/mule-secure-properties-encrypter-decrypter.git
   ```
3. Navigate to masterscript folder, You should modify the algorithm and mode that you want to use while encrypting or decrypting while using this script by editing secure ``` secure_properties.bat ```
    line no 41,42 
    ```
    Default alogorithm : Blowfish
    Default Mode       : CBC
    ```
4. Click on secure_properties.bat
        
5. Enter your key that you want to encrypt or decrypt with, select your preferred options.
   

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

There are two modes for this script.
  <ol>
  <li>Encrypt</li>
  <li>Decrypt</li>
  </ol>
  
  ### Encrypt
    
   Encrypt has 3 modes as supported by official MuleSoft binary.
       <ol>
        <li>Encrypt Strings</li>
        <li>Encrypt properties in a file</li>
        <li>Encrypt entire file</li>
      </ol>
      
   ### Decrypt
    
   Decrypt has 3 modes as supported by official MuleSoft binary.
       <ol>
        <li>Decrypt Strings</li>
        <li>Decrypt properties in a file</li>
        <li>Decrypt entire file</li>
      </ol>
    
  

_For more examples, please refer to the [Documentation](https://github.com/nmk32/mule-secure-properties-encrypter-decrypter/wiki)_

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Manikanta Nandamuri - [@Manikanta Nandmuri](https://www.linkedin.com/in/nandamurimanikanta)

Project Link: [https://github.com/nmk32/mule-secure-properties-encrypter-decrypter](https://github.com/nmk32/mule-secure-properties-encrypter-decrypter)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Official Mulesoft Secure Properties](https://docs.mulesoft.com/mule-runtime/4.2/secure-configuration-properties)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/nmk32/mule-secure-properties-encrypter-decrypter/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/nandamurimanikanta
