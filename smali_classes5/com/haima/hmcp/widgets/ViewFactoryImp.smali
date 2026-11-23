.class public Lcom/haima/hmcp/widgets/ViewFactoryImp;
.super Lcom/haima/hmcp/widgets/BaseVideoViewFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/BaseVideoViewFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getHmcpVideoView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/haima/hmcp/IHmcpVideoView;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/haima/hmcp/widgets/BaseVideoViewFactory;->getHmcpVideoView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/haima/hmcp/IHmcpVideoView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method getVideoView(Landroid/content/Context;Ljava/lang/String;)Lcom/haima/hmcp/IHmcpVideoView;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
