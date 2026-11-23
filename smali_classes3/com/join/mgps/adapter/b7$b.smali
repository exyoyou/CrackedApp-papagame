.class Lcom/join/mgps/adapter/b7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/b7;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/adapter/b7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/b7;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$searchDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b7$b;->c:Lcom/join/mgps/adapter/b7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget-object p1, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->c:Lcom/join/mgps/adapter/b7;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/adapter/b7;->z()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const-string v10, ""

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->c:Lcom/join/mgps/adapter/b7;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/adapter/b7;->d(Lcom/join/mgps/adapter/b7;)Lcom/join/mgps/adapter/b7$g;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->c:Lcom/join/mgps/adapter/b7;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/adapter/b7;->d(Lcom/join/mgps/adapter/b7;)Lcom/join/mgps/adapter/b7$g;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/b7$g;->c(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/adapter/b7$b;->c:Lcom/join/mgps/adapter/b7;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/adapter/b7;->d(Lcom/join/mgps/adapter/b7;)Lcom/join/mgps/adapter/b7$g;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/join/mgps/adapter/b7$b;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/b7$g;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_0
    return-void
.end method
