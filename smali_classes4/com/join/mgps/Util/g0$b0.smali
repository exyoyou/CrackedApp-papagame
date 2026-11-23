.class Lcom/join/mgps/Util/g0$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0;->a0(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/db/tables/EMUApkTable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDialog",
            "val$emuApkTable",
            "val$context",
            "val$checkbox"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$b0;->f:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$b0;->b:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/g0$b0;->d:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/g0$b0;->e:Landroid/widget/CheckBox;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$b0;->b:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/Util/g0$b0;->b:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/Util/g0$b0;->d:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/Util/g0$b0;->e:Landroid/widget/CheckBox;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "_"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    aget-object v0, v0, v1

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/join/mgps/Util/g0$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method
