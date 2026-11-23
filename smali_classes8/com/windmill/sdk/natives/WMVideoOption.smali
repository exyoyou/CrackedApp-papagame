.class public Lcom/windmill/sdk/natives/WMVideoOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/natives/WMVideoOption$Builder;
    }
.end annotation


# instance fields
.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method private constructor <init>(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->access$000(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->c:Z

    .line 4
    invoke-static {p1}, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->access$100(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->d:Z

    .line 5
    invoke-static {p1}, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->access$200(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->e:Z

    .line 6
    invoke-static {p1}, Lcom/windmill/sdk/natives/WMVideoOption$Builder;->access$300(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/windmill/sdk/natives/WMVideoOption;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/windmill/sdk/natives/WMVideoOption$Builder;Lcom/windmill/sdk/natives/WMVideoOption$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/natives/WMVideoOption;-><init>(Lcom/windmill/sdk/natives/WMVideoOption$Builder;)V

    return-void
.end method


# virtual methods
.method public isEnableDetailPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableUserControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedCoverImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedProgressBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/natives/WMVideoOption;->c:Z

    .line 2
    .line 3
    return v0
.end method
