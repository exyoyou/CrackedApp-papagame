.class Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->b:Ljava/util/Map;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$d;-><init>()V

    return-void
.end method
