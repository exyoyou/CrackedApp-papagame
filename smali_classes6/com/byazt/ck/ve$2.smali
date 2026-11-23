.class public Lcom/byazt/ck/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25b,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ck/ve;->ve(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/ck/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ck/ve;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ck/ve$2;->tt:Lcom/byazt/ck/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ck/ve$2;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ii/tt;->c()Lcom/byazt/ii/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ck/ve$2;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/ii/tt;->c(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
