.class Lcom/windmill/sdk/strategy/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/windmill/sdk/strategy/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/strategy/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/windmill/sdk/strategy/g;-><init>(Lcom/windmill/sdk/strategy/g$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/windmill/sdk/strategy/g$a;->a:Lcom/windmill/sdk/strategy/g;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a()Lcom/windmill/sdk/strategy/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/g$a;->a:Lcom/windmill/sdk/strategy/g;

    .line 2
    .line 3
    return-object v0
.end method
