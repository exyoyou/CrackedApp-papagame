.class public Lcom/byazt/wk/UGenTestToolsPage;
.super Lcom/byazt/wk/BaseToolPage;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x638,
        0x907
    }
.end annotation


# instance fields
.field public c:Z


# virtual methods
.method public getPageTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UGen\u8c03\u8bd5"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/wk/UGenTestToolsPage;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/wk/UGenTestToolsPage;->c:Z

    .line 6
    .line 7
    return-void
.end method
