.class public final Lcom/byazt/ng/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x588
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic tt:Lcom/byazt/ll/tt;

.field public final synthetic ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$11;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$11;->tt:Lcom/byazt/ll/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$11;->ve:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$11;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$11;->tt:Lcom/byazt/ll/tt;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$11;->ve:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
