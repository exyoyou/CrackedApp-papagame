.class final Lcom/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private c:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/f$k;Lcom/f$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$b;->a:Lcom/f$k;

    .line 4
    iput-object p2, p0, Lcom/f$b;->b:Lcom/f$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/f$b;-><init>(Lcom/f$k;Lcom/f$e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)Lgb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$b;->b(Landroid/app/Activity;)Lcom/f$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Landroid/app/Activity;)Lcom/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$b;->c:Landroid/app/Activity;

    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic build()Leb/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$b;->c()Lcom/l$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lcom/l$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/f$b;->c:Landroid/app/Activity;

    .line 2
    .line 3
    const-class v1, Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$c;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$b;->a:Lcom/f$k;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/f$b;->b:Lcom/f$e;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/f$b;->c:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/f$c;-><init>(Lcom/f$k;Lcom/f$e;Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
