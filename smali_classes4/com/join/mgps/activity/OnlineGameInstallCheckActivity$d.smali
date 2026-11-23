.class Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field final synthetic e:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "iconRes",
            "title",
            "checkedInfo",
            "isChecked"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->e:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->d:Z

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
            "checkedInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconRes"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
