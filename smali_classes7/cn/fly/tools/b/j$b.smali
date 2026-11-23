.class final Lcn/fly/tools/b/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/fly/tools/b/j$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/fly/tools/b/j$b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcn/fly/tools/b/j$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j$b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/b/j$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/b/j$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcn/fly/tools/b/j$b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/b/j$b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method
