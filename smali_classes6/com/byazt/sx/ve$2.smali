.class public final Lcom/byazt/sx/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sc/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x15a
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sx/ve$2;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/qe/ve;->c(Lcom/byazt/sc/tt;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/byazt/sx/ve$2$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/byazt/sx/ve$2$1;-><init>(Lcom/byazt/sx/ve$2;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/sx/ve;->i()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
