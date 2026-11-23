.class public Lcom/cmic/gen/sdk/auth/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/gen/sdk/auth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/gen/sdk/auth/c;

.field private final b:Lcom/cmic/gen/sdk/a;


# direct methods
.method constructor <init>(Lcom/cmic/gen/sdk/auth/c;Lcom/cmic/gen/sdk/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/gen/sdk/auth/c$a;->a:Lcom/cmic/gen/sdk/auth/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/cmic/gen/sdk/auth/c$a;->b:Lcom/cmic/gen/sdk/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "200023"

    .line 2
    .line 3
    const-string v1, "\u767b\u5f55\u8d85\u65f6"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cmic/gen/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/cmic/gen/sdk/auth/c$a;->a:Lcom/cmic/gen/sdk/auth/c;

    .line 10
    .line 11
    const-string v4, "resultCode"

    .line 12
    .line 13
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v4, "desc"

    .line 18
    .line 19
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v4, p0, Lcom/cmic/gen/sdk/auth/c$a;->b:Lcom/cmic/gen/sdk/a;

    .line 24
    .line 25
    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/cmic/gen/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/gen/sdk/a;Lorg/json/JSONObject;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
