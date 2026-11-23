.class public final Lcom/join/mgps/cloud/viewmodel/d$a;
.super Lcom/join/mgps/cloud/viewmodel/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/viewmodel/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/join/mgps/cloud/viewmodel/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/mgps/cloud/viewmodel/d$a;

    invoke-direct {v0}, Lcom/join/mgps/cloud/viewmodel/d$a;-><init>()V

    sput-object v0, Lcom/join/mgps/cloud/viewmodel/d$a;->a:Lcom/join/mgps/cloud/viewmodel/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/cloud/viewmodel/d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/mgps/cloud/viewmodel/d$a;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/join/mgps/cloud/viewmodel/d$a;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x3aa7069b

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "DownloadArchive"

    return-object v0
.end method
