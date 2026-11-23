.class public Lcom/byazt/qx/hd;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x27e
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


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qx/hd;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/hd$1;

    invoke-direct {v0, p1}, Lcom/byazt/qx/hd$1;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "showAppDetailOrPrivacyDialog"

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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/hd;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/omf/x;->hd()Z

    .line 4
    iget-object p2, p0, Lcom/byazt/qx/hd;->c:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/omf/d;

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "show_dialog_style"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/byazt/omf/d;->yv()V

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/byazt/omf/d;->zm()V

    :cond_4
    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
