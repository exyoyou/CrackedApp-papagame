.class abstract Lcom/haima/hmcp/widgets/BaseVideoViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IViewFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getHmcpVideoView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/haima/hmcp/IHmcpVideoView;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/widgets/BaseVideoViewFactory;->getVideoView(Landroid/content/Context;Ljava/lang/String;)Lcom/haima/hmcp/IHmcpVideoView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method abstract getVideoView(Landroid/content/Context;Ljava/lang/String;)Lcom/haima/hmcp/IHmcpVideoView;
.end method
