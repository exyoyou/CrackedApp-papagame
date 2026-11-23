.class Lcom/join/mgps/Util/g0$a0;
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

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic h:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDialog",
            "val$context",
            "val$gameId",
            "val$from",
            "val$checkbox",
            "val$emuApkTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$a0;->h:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$a0;->b:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$a0;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/g0$a0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/g0$a0;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/Util/g0$a0;->f:Landroid/widget/CheckBox;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/Util/g0$a0;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$a0;->b:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/Util/g0$a0;->c:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/Util/g0$a0;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/Util/g0$a0;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/Util/g0$a0;->f:Landroid/widget/CheckBox;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$a0;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "_"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    aget-object v0, v0, v1

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/join/mgps/Util/g0$a0;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    return-void
.end method
