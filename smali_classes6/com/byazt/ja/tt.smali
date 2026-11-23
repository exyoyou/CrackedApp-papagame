.class public final Lcom/byazt/ja/tt;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x591,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ja/tt$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/uj<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/ja/tt$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public tt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/ja/tt;->tt:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/omf/d;Lcom/byazt/ja/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ja/tt;-><init>(Lcom/byazt/omf/d;)V

    return-void
.end method

.method public static c(Lcom/byazt/ja/tt$c;)V
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/byazt/ja/tt;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ja/tt$1;

    invoke-direct {v0, p1}, Lcom/byazt/ja/tt$1;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "onClickBrowseCloseCallback"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ja/tt;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    sget-object p2, Lcom/byazt/ja/tt;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ja/tt$c;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/byazt/ja/tt;->tt:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "remainTime"

    const/high16 v1, -0x80000000

    .line 6
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Lcom/byazt/ja/tt$c;->c()V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2, p1}, Lcom/byazt/ja/tt$c;->c(I)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 9
    invoke-interface {p2}, Lcom/byazt/ja/tt$c;->c()V

    :cond_6
    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
