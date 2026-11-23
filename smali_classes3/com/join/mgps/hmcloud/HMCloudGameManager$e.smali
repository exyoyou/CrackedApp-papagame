.class Lcom/join/mgps/hmcloud/HMCloudGameManager$e;
.super Lcom/kongzue/dialogx/interfaces/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;->h1(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/r<",
        "Lcom/kongzue/dialogx/dialogs/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/hmcloud/HMCloudGameManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "layoutResId",
            "val$iconUrl",
            "val$time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p4, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->b:I

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/interfaces/r;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->g(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/join/mgps/activity/HMCloudMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/high16 v0, 0x10000000

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->f0()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/HMCloudMainActivity_$u;->g(J)Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "_scene"

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/join/mgps/activity/HMCloudMainActivity_$u;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public h(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "v"
        }
    .end annotation

    .line 1
    const p1, 0x7f0a0a22

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/ImageView;

    .line 9
    .line 10
    const v0, 0x7f0a192f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    const v1, 0x7f0a1a3c

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    const v2, 0x7f0a0a46

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->a:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v4, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;

    .line 44
    .line 45
    invoke-direct {v4, p0, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$e$a;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;Landroid/widget/ImageView;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v3, v4}, Lcom/join/android/app/common/utils/l;->m(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/imagepipeline/datasource/b;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/join/mgps/hmcloud/q;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/join/mgps/hmcloud/q;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p2, "<font color=\'#FF0000\'>"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget p2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->b:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, "\u79d2</font>\u540e\u5c06\u81ea\u52a8\u653e\u5f03\uff0c\u518d\u6b21\u8fdb\u5165\u9700\u91cd\u65b0\u6392\u961f"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/join/mgps/hmcloud/r;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/join/mgps/hmcloud/r;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$e;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "v"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/l;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$e;->h(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
