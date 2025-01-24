# Aspose.PDF CLI App

Aspose.PDF is a CLI tool which makes working with PDF files very easy. It supports the most common PDF operations. The application is powered by the Aspose.PDF for C++ library.

## Features:

* Merge PDF files
* Split PDF files
* Extract text from PDF files
* Extract images from PDF files
* Decrypt PDF files
* Change user/owner password
* Optimize PDF files
* Rotate PDF pages
* Add watermark (stamps) images to PDF files
* Convert PDF files to grayscale
* Convert PDF to PDF/A
* Set headers/footers to the PDF document pages
* Add background image to the pages of the PDF document
* Rotate pages
* Sign PDF with digital signature
* Add page nummbers
* Render PDF pages to images
* Convert PDF to DOCX
* Convert PDF to XLSX
* Convert PDF to PPTX
* Import PS, PCL and save as PDF
* Convert SVG to PDF
* Convert TEX to PDF
* Convert XPS to PDF
* Create PDF from XSL-FO


## Installation on macOS

To install `asposepdftool` on macOS using Homebrew, follow these steps:

1. Add the tap for `asposepdftool`:
   ```bash
   brew tap aspose-pdf/asposepdftool https://github.com/aspose-pdf/asposepdftool
   ```

2. Install `asposepdftool`:
   ```bash
   brew install asposepdftool
   ```

3. Verify the installation:
   ```bash
   asposepdftool help
   ```

This will ensure that the tool is installed correctly and ready for use. 

Please share your feedback, bugs and suggestions for improvement on email support-pdf@aspose.com or [free forum site](https://forum.aspose.com/).


## How to use Aspose.PDF CLI App:


### Optimize PDF
```bash
asposepdftool optimize <input-file> [output-file]
```

* **\<input-file\>** - initial file for optimization
* **[output-file]** - optional parameter if the name of the result file is not specified the source pdf file will be overwritten




### Extract text from PDF
```bash
asposepdftool text <input-file> [output-file]
```

* **\<input-file\>** - initial file for extraction 
* **[output-file]** - optional parameter if the name of the text file is not specified it will be the same as the name of the source pdf file with the ".txt" extension




### Extract images from PDF
```bash
asposepdftool images [-png] [-gs] <input-file> [destination-directory]
```
By default, all images will be extracted as JPEG images. If you want to extract as PNG, please add `-png` key. Another key `-gs` allows to save gray-scaled images.

* **\<input-file\>** - initial file for extraction 
* **[destination-directory]** - optional parameter, if the destination directory is not specified it will be the same as in the source pdf file




### Merge PDF files into single document
```bash
asposepdftool merge <PDF-sourcefile-1>..<PDF-sourcefile-n> <PDF-destinationfile>
```
Merges source PDF files into destination PDF file. Use at least two source files.



### Split PDF files
```bash
asposepdftool split <PDF-sourcefile> <number of page to split at> [PDF-destinationfile-1] [PDF-destinationfile-2]
```
Split source PDF file into two parts PDF files based on specific page position (number).

* **\<PDF-sourcefile\>** - initial file for splitting 
* **[PDF-destinationfile-x]** - optional parameter, if the names of the destination files are not specified they will be the same as the source filename with suffixes '_1' and '_2' correspondingly.




### Add images to PDF files
```bash
asposepdftool addimages <PDF-source-file> [-out=result-file] <image-file-1>..<image-file-n>
```
Add images to the end of the PDF document

* **\<PDF-source-file\>** - initial file for splitting 
* **[-out=result-file]** - optional parameter, allows to set the result file namefilename with suffixes '_1' and '_2' correspondingly.


### Add stamp (watermark) to PDF files
```bash
asposepdftool addstamp [options] <PDF-file> <image-file> [<result-file>]
```
Adds the image as stamp to the PDF document. <br/>
Options:

* **-pages=range** range of pages to process. Example: -pages=1,3,5-7
* **-bg** image stamped as background
* **-x=** x coordinate of stamp
* **-y=** y coordinate of stamp
* **-w=** width of stamp
* **-h=** height of stamp
* **-o=** the stamp opacity. The value is from 0.0 to 1.0 
* **-r=90|180|270** angle of rotation




### Decrypt PDF
```bash
asposepdftool decrypt <PDF-file> <password> [<result-file>]
```
Remove password protection from PDF document.



### Encrypt PDF
```bash
asposepdftool encrypt [options] <PDF-file> [<result-file>]
```
Set password protection to PDF file<br/>
Options:

* **-up=string** user password.
* **-op=string** owner password.
* **-alg=RC4x40|RC4x128|AESx128|AESx256** crypto algorithm. Default value AESx256
* **-p=number**  permission as sum of the following values

| **Permission**                 | **Values** |
|--------------------------------|------------|
| PrintDocument                  | 4          |
| ModifyContent                  | 8          |
| ExtractContent                 | 16         |
| ModifyTextAnnotations          | 32         |
| FillForm                       | 256        |
| ExtractContentWithDisabilities | 512        |
| AssembleDocument               | 1024       |
| PrintingQuality                | 2048       |



### Get PDF Metadata
```bash
asposepdftool getinfo <PDF-file>
```
Prints metadata.



### Set PDF Metadata
```bash
asposepdftool setinfo [options] <PDF-file> [<result-file>]
```
Set or update metadata in PDF document<br/>
Options:

* **-title=string** set document title
* **-author=string** set document's author
* **-creator=string** set document's creator
* **-subject=string** set document subject
* **-keywords=string** set keywords
* **-creation=datetime** update date of document creation
* **-mod=datetime** update date of document modification




### List of fonts in PDF
```bash
asposepdftool fonts <PDF-file>
```
Enumerate font in PDF




### Remove page or pages from PDF
```bash
asposepdftool delete -pages=range <PDF-file> [result-file]
```
Delete specified pages from the PDF document. Range is a string with page numbers (ex. -pages=1,3,5-7)




### Remove page or pages from PDF
```bash
asposepdftool delete -pages=range <PDF-file> [result-file]
```
Delete specified pages from the PDF document. Range is a string with page numbers (ex. -pages=1,3,5-7)




### Convert PDF to PDF/A
```bash
asposepdftool pdfa <PDF-file> [result-file] [-log=log-file]
```
Convert the PDF document to PDF/A format. If the name of the result file is not specified the source pdf file will be overwritten




### Set headers/footers to the PDF document pages
```bash
asposepdftool header [-header=string] [-footer=string] <PDF-file> [result-file] [-log=log-file]
```
Set headers/footers to the PDF document pages




### Set headers/footers to the PDF document pages
```bash
asposepdftool background <PDF-file> <image-file> [result-file]
```
Set headers/footers to the PDF document pages




### Make the PDF document grayscaled
```bash
asposepdftool grayscale <PDF-file> [result-file]
```
Convert PDF pages to grayscale format.




### Rotate pages in the PDF document
```bash
asposepdftool rotate <PDF-file> [result-file]
```
Turn pages clockwise or counterclockwise in PDF document.
Options:

* -pages=range range of pages to process
* -r=90|180|270 angle of rotation




### Sign the PDF document 
```bash
asposepdftool sign [options] <PDF-file> [result-file]
```

Sign the PDF document with digital signature
Options:

* **-page=int** page to sign. Default value is 1.
* **-sign=string** signature in PKCS#7 fil format.
* **-pass=string** password
* **-rect=x,y,w,h** - rectangle for sign
* **-reason=string**
* **-contact=string**
* **-location=string**
* **-image=image-file** signature appearance
* **-v** means visible




### Convert PDF to JPEG
```bash
asposepdftool jpg <PDF-file> [destination-directory]
```
Save pages of the PDF document as JPEG images into specified directory. If the destination directory is not specified it will be the same as in the source pdf file



### Convert PDF to PNG
```bash
asposepdftool png <PDF-file> [destination-directory]
```
Save pages of the PDF document as PNG images into specified directory. If the destination directory is not specified it will be the same as in the source pdf file



### Convert PDF to TIFF
```bash
asposepdftool tiff <PDF-file> [<destination-directory-or-file>] [-separate] [-1bpp] [-skipblank] [-brightness=value]
```
Save PDF document as TIFF image
Options:

* **-separate** saves each page into separate tiff image
* **-1bpp** the color depth of resulting image is 1 bit per pixel
* **-skipblank** skip blank pages
* **-brightness=value** from 0.0 to 1.0 for 1bpp images. Default value is 0.33




### Add page numbering
```bash
asposepdftool apn <PDF-file> [result-file] [-font=font_name>] [-size=font_size] [-b] [-i] [-l|-r]
```
Add pages numeration
Options:

* **-font=font_name** - font for numeration
* **-size=font_size** - font size
* **-b** - bold style
* **-i** - italic style
* **-l** - left alignment
* **-r** - right alignment




### Convert PDF to Word
```bash
asposepdftool docx [-ef] <PDF-file> [result-file]
```
Convert the PDF document into DOCX format.

Options:

* **-ef** - set recognition mode to EnhancedFlow




### Convert PDF to Excel
```bash
asposepdftool xlsx <PDF-file> [result-file]
```
Convert the PDF document into XLSX format.




### Convert PDF to Powerpoint
```bash
asposepdftool pptx <PDF-file> [result-file]
```
Convert the PDF document into PPTX format.




### Convert PDF to SVG
```bash
asposepdftool svg <PDF-file> [result-file]
```
Convert the PDF document into SVG format.




### Convert PDF to XPS
```bash
asposepdftool xps <PDF-file> [result-file]
```
Convert the PDF document into SVG format.




### Convert PCL to PDF
```bash
asposepdftool pcl2pdf <input-file> [PDF-file]
```
Convert the PCL document into PDF




### Convert PostScript to PDF
```bash
asposepdftool ps2pdf <input-file> [PDF-file]
```
Convert the PS document into PDF




### Convert SVG to PDF
```bash
asposepdftool svg2pdf <input-file> [PDF-file]
```
Convert the SVG document into PDF




### Convert TeX to PDF
```bash
asposepdftool svg2pdf <input-file> [PDF-file]
```
Convert the TEX document into PDF




### Convert XPS to PDF
```bash
asposepdftool xps2pdf <input-file> [PDF-file]
```
Convert the XPS document into PDF




### Convert XSL-FO to PDF
```bash
asposepdftool xslfo2pdf <input-file> [PDF-file]
```
Convert the XSL-FO document into PDF

