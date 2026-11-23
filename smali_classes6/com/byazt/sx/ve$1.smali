.class public final Lcom/byazt/sx/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sx/ve;->tt(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sx/ve$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/sx/ve$1;->tt:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/byazt/sx/ve$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/sx/ve$1;->tt:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/sx/ve;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/sx/ve$1;->tt:Lorg/json/JSONObject;

    .line 9
    .line 10
    const-string v1, "s-adlog2"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
