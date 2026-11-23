.class Lcom/cloudplay/messagesdk/socket/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/SocketType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/a;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/a$c;->a:Lcom/cloudplay/messagesdk/socket/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "WebSocketManager"

    .line 2
    .line 3
    const-string v1, "scheduledSocketConnect()->scheduleAtFixedRate()->run() connectLink"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/a$c;->a:Lcom/cloudplay/messagesdk/socket/a;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/a;->d(Lcom/cloudplay/messagesdk/socket/a;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/socket/a;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
