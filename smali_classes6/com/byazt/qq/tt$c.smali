.class public Lcom/byazt/qq/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qq/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Z

.field public tt:I

.field public uj:Landroid/app/Dialog;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/byazt/qq/tt$c;->c:Z

    .line 3
    iput p2, p0, Lcom/byazt/qq/tt$c;->tt:I

    .line 4
    iput-object p3, p0, Lcom/byazt/qq/tt$c;->ve:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/byazt/qq/tt$c;->uj:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qq/tt$c;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt$c;->uj:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt$c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt$c;->uj:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qq/tt$c;->c:Z

    .line 2
    .line 3
    return v0
.end method
