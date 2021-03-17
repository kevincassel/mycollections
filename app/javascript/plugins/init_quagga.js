import Quagga from 'quagga';

// Quagga.init will find on the dom the target
// and will run a video with the camera (webcam on computer, camera on smartphone)
const scan = () => {
  const quagga = document.querySelector('#quagga')
  if (quagga) {
    Quagga.init({
        inputStream : {
          name : "Live",
          type : "LiveStream",
          target: quagga // <--- change '#yourElement' with your id
        },
        decoder : {
          readers : ['ean_reader','ean_8_reader','code_39_reader','code_39_vin_reader','codabar_reader','upc_reader','upc_e_reader']
        }
      }, function(err) {
          if (err) {
              console.log(err);
              return
          }
          console.log("Initialization finished. Ready to start");
          Quagga.start();
      });
    
    // the callback is called when a barcode is detected
    // we can extract the barcode with data.codeResult.code
    Quagga.onDetected((data) => {
      const barcode = data.codeResult.code;
      // TODO: do something with your backend or frontend
      Quagga.stop();
      window.location = `collections/new/?barecode=${barcode}`;
    });
        // you can call Quagga.stop() to stop the camera
        
  }
}
  export { scan };