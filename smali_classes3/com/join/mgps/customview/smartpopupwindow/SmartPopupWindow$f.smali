.class public Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "view"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->x()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 7
    .line 8
    return-object v0
.end method

.method public c(F)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)F

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(I)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e(Z)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dismiss"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Z)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f(II)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
