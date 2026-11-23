.class public Lcom/join/mgps/activity/b3$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:I

.field final synthetic d:Lcom/join/mgps/activity/b3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/b3;ZLandroid/view/View;I)V
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
            "isVideo",
            "view",
            "pic_position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$z;->d:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/activity/b3$z;->a:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/activity/b3$z;->b:Landroid/view/View;

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/activity/b3$z;->c:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/b3$z;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/b3$z;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/b3$z;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/b3$z;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/b3$z;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/b3$z;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/b3$z;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$z;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/b3$z;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/b3$z;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public h(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/b3$z;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$z;->b:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method
