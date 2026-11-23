.class Lcom/cloudplay/messagesdk/MessageSDK$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/HttpResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/MessageSDK;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/MessageSDK;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/MessageSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "MessageSDK"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "linkAddress:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MessageSDK"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, "&cli=m_master-2.4.0-cdfca6c7"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$b;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->e(Lcom/cloudplay/messagesdk/MessageSDK;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/socket/a;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
