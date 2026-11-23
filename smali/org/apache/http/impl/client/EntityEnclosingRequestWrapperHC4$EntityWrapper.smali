.class Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntityWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->consumeContent()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->getContent()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->writeTo(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
