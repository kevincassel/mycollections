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
        const api_key = process.env.BARCODE_API_KEY;
        const proxyurl = "https://cors-anywhere.herokuapp.com/";
        // TODO: do something with your backend or frontend
        const url = proxyurl + "https://api.barcodelookup.com/v2/products?barcode=077341125112&formatted=y&key=" + api_key;
        console.log(barcode);
        console.log(api_key);
        Quagga.stop();
        fetch(url)
          .then(response => response.json())
          .then((data) => {
            console.log(data);
            console.log(data.products[0].product_name)
            const name = data.products[0].product_name;
            window.location = `collections/new/?query=${name}`;
          });
        // you can call Quagga.stop() to stop the camera
      });
  }
}
  export { scan };