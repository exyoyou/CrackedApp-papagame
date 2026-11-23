.class public final synthetic Lcom/haima/hmcp/widgets/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field public final synthetic c:Lcom/haima/hmcp/listeners/OnSendMessageListener;

.field public final synthetic d:Lcom/haima/hmcp/enums/MessageType;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/listeners/OnSendMessageListener;Lcom/haima/hmcp/enums/MessageType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/c;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/c;->c:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    iput-object p3, p0, Lcom/haima/hmcp/widgets/c;->d:Lcom/haima/hmcp/enums/MessageType;

    iput-object p4, p0, Lcom/haima/hmcp/widgets/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/c;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/c;->c:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    iget-object v2, p0, Lcom/haima/hmcp/widgets/c;->d:Lcom/haima/hmcp/enums/MessageType;

    iget-object v3, p0, Lcom/haima/hmcp/widgets/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->i(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/listeners/OnSendMessageListener;Lcom/haima/hmcp/enums/MessageType;Ljava/lang/String;)V

    return-void
.end method
