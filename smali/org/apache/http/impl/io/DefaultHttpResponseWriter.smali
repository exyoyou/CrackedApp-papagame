.class public Lorg/apache/http/impl/io/DefaultHttpResponseWriter;
.super Lorg/apache/http/impl/io/AbstractMessageWriterHC4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageWriterHC4<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;)V

    return-void
.end method


# virtual methods
.method protected writeHeadLine(Lorg/apache/http/HttpMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineFormatter:Lorg/apache/http/message/LineFormatter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 4
    .line 5
    check-cast p1, Lorg/apache/http/HttpResponse;

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, v1, p1}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->sessionBuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageWriterHC4;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
