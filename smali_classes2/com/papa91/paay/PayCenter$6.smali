.class final Lcom/papa91/paay/PayCenter$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter;->buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$6;->val$uid:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/paay/PayCenter$6;->val$token:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/paay/PayCenter$6;->val$gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 11
    .line 12
    const-string v2, "uid"

    .line 13
    .line 14
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$6;->val$uid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 23
    .line 24
    const-string v2, "token"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$6;->val$token:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 35
    .line 36
    const-string v2, "game_id"

    .line 37
    .line 38
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$6;->val$gameId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/papa91/paay/PayCenter$6$1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/papa91/paay/PayCenter$6$1;-><init>(Lcom/papa91/paay/PayCenter$6;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "http://payv1.papa91.com/pay/emulator/open_sp_permission"

    .line 52
    .line 53
    invoke-static {v2, v0, v1}, Lcom/papa91/paay/NetUtils;->postRequest(Ljava/lang/String;Ljava/util/List;Lcom/papa91/paay/NetWorkListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
