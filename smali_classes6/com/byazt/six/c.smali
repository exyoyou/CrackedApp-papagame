.class public Lcom/byazt/six/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f6,
        0x14
    }
.end annotation


# instance fields
.field public c:Landroid/webkit/WebResourceResponse;

.field public tt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/six/c;->tt:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/six/c;->c:Landroid/webkit/WebResourceResponse;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/six/c;->tt:I

    return-void
.end method

.method public c(Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/six/c;->c:Landroid/webkit/WebResourceResponse;

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/six/c;->tt:I

    .line 2
    .line 3
    return v0
.end method
