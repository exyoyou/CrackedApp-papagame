package io.netty.handler.codec.http.websocketx.extensions;

import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.util.internal.ObjectUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketClientExtensionHandler extends ChannelDuplexHandler {
    private final List<WebSocketClientExtensionHandshaker> extensionHandshakers;

    public WebSocketClientExtensionHandler(WebSocketClientExtensionHandshaker... webSocketClientExtensionHandshakerArr) {
        ObjectUtil.checkNotNull(webSocketClientExtensionHandshakerArr, "extensionHandshakers");
        if (webSocketClientExtensionHandshakerArr.length == 0) {
            throw new IllegalArgumentException("extensionHandshakers must contains at least one handshaker");
        }
        this.extensionHandshakers = Arrays.asList(webSocketClientExtensionHandshakerArr);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (obj instanceof HttpResponse) {
            HttpResponse httpResponse = (HttpResponse) obj;
            if (WebSocketExtensionUtil.isWebsocketUpgrade(httpResponse.headers())) {
                String asString = httpResponse.headers().getAsString(HttpHeaderNames.SEC_WEBSOCKET_EXTENSIONS);
                if (asString != null) {
                    List<WebSocketExtensionData> listExtractExtensions = WebSocketExtensionUtil.extractExtensions(asString);
                    ArrayList<WebSocketClientExtension> arrayList = new ArrayList(listExtractExtensions.size());
                    int iRsv = 0;
                    for (WebSocketExtensionData webSocketExtensionData : listExtractExtensions) {
                        Iterator<WebSocketClientExtensionHandshaker> it2 = this.extensionHandshakers.iterator();
                        WebSocketClientExtension webSocketClientExtensionHandshakeExtension = null;
                        while (webSocketClientExtensionHandshakeExtension == null && it2.hasNext()) {
                            webSocketClientExtensionHandshakeExtension = it2.next().handshakeExtension(webSocketExtensionData);
                        }
                        if (webSocketClientExtensionHandshakeExtension == null || (webSocketClientExtensionHandshakeExtension.rsv() & iRsv) != 0) {
                            throw new CodecException("invalid WebSocket Extension handshake for \"" + asString + '\"');
                        }
                        iRsv |= webSocketClientExtensionHandshakeExtension.rsv();
                        arrayList.add(webSocketClientExtensionHandshakeExtension);
                    }
                    for (WebSocketClientExtension webSocketClientExtension : arrayList) {
                        WebSocketExtensionDecoder webSocketExtensionDecoderNewExtensionDecoder = webSocketClientExtension.newExtensionDecoder();
                        WebSocketExtensionEncoder webSocketExtensionEncoderNewExtensionEncoder = webSocketClientExtension.newExtensionEncoder();
                        channelHandlerContext.pipeline().addAfter(channelHandlerContext.name(), webSocketExtensionDecoderNewExtensionDecoder.getClass().getName(), webSocketExtensionDecoderNewExtensionDecoder);
                        channelHandlerContext.pipeline().addAfter(channelHandlerContext.name(), webSocketExtensionEncoderNewExtensionEncoder.getClass().getName(), webSocketExtensionEncoderNewExtensionEncoder);
                    }
                }
                channelHandlerContext.pipeline().remove(channelHandlerContext.name());
            }
        }
        super.channelRead(channelHandlerContext, obj);
    }

    @Override // io.netty.channel.ChannelDuplexHandler, io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        if (obj instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) obj;
            if (WebSocketExtensionUtil.isWebsocketUpgrade(httpRequest.headers())) {
                String asString = httpRequest.headers().getAsString(HttpHeaderNames.SEC_WEBSOCKET_EXTENSIONS);
                Iterator<WebSocketClientExtensionHandshaker> it2 = this.extensionHandshakers.iterator();
                while (it2.hasNext()) {
                    WebSocketExtensionData webSocketExtensionDataNewRequestData = it2.next().newRequestData();
                    asString = WebSocketExtensionUtil.appendExtension(asString, webSocketExtensionDataNewRequestData.name(), webSocketExtensionDataNewRequestData.parameters());
                }
                httpRequest.headers().set(HttpHeaderNames.SEC_WEBSOCKET_EXTENSIONS, asString);
            }
        }
        super.write(channelHandlerContext, obj, channelPromise);
    }
}
