.class final Lcn/fly/tools/b/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcn/fly/tools/b/j$c;->a:Z

    .line 4
    iput-object p2, p0, Lcn/fly/tools/b/j$c;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcn/fly/tools/b/j$c;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/b/j$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/b/j$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcn/fly/tools/b/j$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/fly/tools/b/j$c;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/b/j$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
