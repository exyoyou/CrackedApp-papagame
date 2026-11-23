.class public final Lcom/windmill/sdk/natives/WMVideoOption$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/natives/WMVideoOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->d:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->e:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->f:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->f:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/windmill/sdk/natives/WMVideoOption;
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/natives/WMVideoOption;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/windmill/sdk/natives/WMVideoOption;-><init>(Lcom/windmill/sdk/natives/WMVideoOption$Builder;Lcom/windmill/sdk/natives/WMVideoOption$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setEnableDetailPage(Z)Lcom/windmill/sdk/natives/WMVideoOption$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableDetailPage"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableUserControl(Z)Lcom/windmill/sdk/natives/WMVideoOption$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableUserControl"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setNeedCoverImage(Z)Lcom/windmill/sdk/natives/WMVideoOption$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needCoverImage"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setNeedProgressBar(Z)Lcom/windmill/sdk/natives/WMVideoOption$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needProgressBar"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->c:Z

    .line 2
    .line 3
    return-object p0
.end method
