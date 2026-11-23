.class public final Lcom/byazt/hn/tt$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0xf0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hn/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tt"
.end annotation


# instance fields
.field public final c:F

.field public final tt:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/hn/tt$tt;->c:F

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/byazt/hn/tt$tt;->tt:Z

    .line 7
    .line 8
    return-void
.end method

.method public static c(Ljava/lang/Object;Lcom/byazt/hn/tt$tt;)Lcom/byazt/hn/tt$tt;
    .locals 3

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Lcom/byazt/hn/tt$tt;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {p1, p0, v1}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    :try_start_0
    const-string v0, "%"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 7
    new-instance v0, Lcom/byazt/hn/tt$tt;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    invoke-direct {v0, p0, v2}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/byazt/hn/tt$tt;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/byazt/hn/tt$tt;-><init>(FZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public c(F)F
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/byazt/hn/tt$tt;->tt:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/byazt/hn/tt$tt;->c:F

    mul-float p1, p1, v0

    return p1

    :cond_0
    iget p1, p0, Lcom/byazt/hn/tt$tt;->c:F

    return p1
.end method
