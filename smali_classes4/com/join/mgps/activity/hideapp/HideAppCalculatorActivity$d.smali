.class Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "btnStr"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->d:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "#333333"

    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b:Ljava/lang/String;

    const-string p1, "#FFFFFF"

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->c:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "btnStr",
            "btnColor",
            "textColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->d:Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnStr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
