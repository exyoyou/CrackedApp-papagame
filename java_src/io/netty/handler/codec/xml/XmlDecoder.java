package io.netty.handler.codec.xml;

import com.fasterxml.aalto.AsyncByteArrayFeeder;
import com.fasterxml.aalto.AsyncXMLInputFactory;
import com.fasterxml.aalto.AsyncXMLStreamReader;
import com.fasterxml.aalto.stax.InputFactoryImpl;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import java.util.List;
import javax.xml.stream.XMLStreamException;

/* JADX INFO: loaded from: classes.dex */
public class XmlDecoder extends ByteToMessageDecoder {
    private final AsyncByteArrayFeeder streamFeeder;
    private final AsyncXMLStreamReader<AsyncByteArrayFeeder> streamReader;
    private static final AsyncXMLInputFactory XML_INPUT_FACTORY = new InputFactoryImpl();
    private static final XmlDocumentEnd XML_DOCUMENT_END = XmlDocumentEnd.INSTANCE;

    public XmlDecoder() {
        AsyncXMLStreamReader<AsyncByteArrayFeeder> asyncXMLStreamReaderCreateAsyncForByteArray = XML_INPUT_FACTORY.createAsyncForByteArray();
        this.streamReader = asyncXMLStreamReaderCreateAsyncForByteArray;
        this.streamFeeder = asyncXMLStreamReaderCreateAsyncForByteArray.getInputFeeder();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.xml.stream.XMLStreamException */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int i10 = byteBuf.readableBytes();
        byte[] bArr = new byte[i10];
        byteBuf.readBytes(bArr);
        try {
            this.streamFeeder.feedInput(bArr, 0, i10);
            while (!this.streamFeeder.needMoreInput()) {
                switch (this.streamReader.next()) {
                    case 1:
                        XmlElementStart xmlElementStart = new XmlElementStart(this.streamReader.getLocalName(), this.streamReader.getName().getNamespaceURI(), this.streamReader.getPrefix());
                        for (int i11 = 0; i11 < this.streamReader.getAttributeCount(); i11++) {
                            xmlElementStart.attributes().add(new XmlAttribute(this.streamReader.getAttributeType(i11), this.streamReader.getAttributeLocalName(i11), this.streamReader.getAttributePrefix(i11), this.streamReader.getAttributeNamespace(i11), this.streamReader.getAttributeValue(i11)));
                        }
                        for (int i12 = 0; i12 < this.streamReader.getNamespaceCount(); i12++) {
                            xmlElementStart.namespaces().add(new XmlNamespace(this.streamReader.getNamespacePrefix(i12), this.streamReader.getNamespaceURI(i12)));
                        }
                        list.add(xmlElementStart);
                        break;
                    case 2:
                        XmlElementEnd xmlElementEnd = new XmlElementEnd(this.streamReader.getLocalName(), this.streamReader.getName().getNamespaceURI(), this.streamReader.getPrefix());
                        for (int i13 = 0; i13 < this.streamReader.getNamespaceCount(); i13++) {
                            xmlElementEnd.namespaces().add(new XmlNamespace(this.streamReader.getNamespacePrefix(i13), this.streamReader.getNamespaceURI(i13)));
                        }
                        list.add(xmlElementEnd);
                        break;
                    case 3:
                        list.add(new XmlProcessingInstruction(this.streamReader.getPIData(), this.streamReader.getPITarget()));
                        break;
                    case 4:
                        list.add(new XmlCharacters(this.streamReader.getText()));
                        break;
                    case 5:
                        list.add(new XmlComment(this.streamReader.getText()));
                        break;
                    case 6:
                        list.add(new XmlSpace(this.streamReader.getText()));
                        break;
                    case 7:
                        list.add(new XmlDocumentStart(this.streamReader.getEncoding(), this.streamReader.getVersion(), this.streamReader.isStandalone(), this.streamReader.getCharacterEncodingScheme()));
                        break;
                    case 8:
                        list.add(XML_DOCUMENT_END);
                        break;
                    case 9:
                        list.add(new XmlEntityReference(this.streamReader.getLocalName(), this.streamReader.getText()));
                        break;
                    case 11:
                        list.add(new XmlDTD(this.streamReader.getText()));
                        break;
                    case 12:
                        list.add(new XmlCdata(this.streamReader.getText()));
                        break;
                }
            }
        } catch (XMLStreamException e10) {
            byteBuf.skipBytes(byteBuf.readableBytes());
            throw e10;
        }
    }
}
