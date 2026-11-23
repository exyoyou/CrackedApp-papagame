.class Lcom/join/mgps/adapter/h7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h7;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

.field final synthetic c:Lcom/join/mgps/adapter/h7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalSubBean2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h7$b;->c:Lcom/join/mgps/adapter/h7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getLink_type()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getLink_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getJump_type()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$b;->b:Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;->getTpl_type()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/adapter/h7$b;->c:Lcom/join/mgps/adapter/h7;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/join/mgps/adapter/h7;->b(Lcom/join/mgps/adapter/h7;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method
