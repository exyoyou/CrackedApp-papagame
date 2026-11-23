.class final Lcn/fly/tools/a/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/a/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/fly/tools/a/e$a$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcn/fly/tools/a/e$a$a;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcn/fly/tools/a/e$a$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;ZLcn/fly/tools/a/e$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/fly/tools/a/e$a$a;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/a/e$a$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcn/fly/tools/a/e$a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcn/fly/tools/a/e$a$a;->c:Z

    .line 6
    .line 7
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, v1, v2, p1}, Lcn/fly/tools/xcrash/XCrash;->get0(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
