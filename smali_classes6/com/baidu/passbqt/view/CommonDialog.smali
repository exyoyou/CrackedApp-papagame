.class public Lcom/baidu/passbqt/view/CommonDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/passbqt/view/CommonDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/passbqt/view/CommonDialog;->b(Landroid/widget/TextView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float p1, p1

    .line 8
    mul-float v0, v0, p1

    .line 9
    .line 10
    const/high16 p1, 0x42c80000    # 100.0f

    .line 11
    .line 12
    div-float/2addr v0, p1

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
