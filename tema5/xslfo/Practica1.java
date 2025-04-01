package baroja.lenma.tema5.xslfo;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;


public class Practica1 {
    public static void main(String[] args) {
        String RutaFich = "tema5/src/main/java/baroja/lenma/tema5/xslfo/";

        
        try {
            // Archivo XSLT
            File xsltFile = new File(RutaFich + "pract1.xsl");
            
            // Archivo XML de entrada
            StreamSource xslSource = new StreamSource(new File(RutaFich + "pract1.xml"));
            
            // Crear FopFactory y FOUserAgent
            FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
            FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
            
            // Salida del PDF
            OutputStream out = new FileOutputStream(RutaFich + "pract1out.pdf");
            
            // Crear FOP para PDF
            Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);
            
            // Crear transformador XSLT
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));
            
            // Procesar el archivo XML y generar PDF
            Result res = new SAXResult(fop.getDefaultHandler());
            transformer.transform(xslSource, res);
            
            out.close();
            System.out.println("PDF generado correctamente");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
