.class public Lcom/byazt/qh/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x32b,
        0xf
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Lcom/byazt/gj/n$c;


# direct methods
.method public constructor <init>(Lcom/byazt/gj/n$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/qh/uj;->tt:Lcom/byazt/gj/n$c;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/byazt/gj/n$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000000-0000-0000-0000-000000000000"

    iget-object p1, p1, Lcom/byazt/gj/n$c;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "error"

    .line 4
    iput-object p1, p0, Lcom/byazt/qh/uj;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/byazt/qh/uj;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/gj/n$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qh/uj;->tt:Lcom/byazt/gj/n$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qh/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
