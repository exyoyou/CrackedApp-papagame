.class final Lcom/f$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;

.field private final d:Lcom/f$h;

.field private e:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$p;->a:Lcom/f$k;

    .line 4
    iput-object p2, p0, Lcom/f$p;->b:Lcom/f$e;

    .line 5
    iput-object p3, p0, Lcom/f$p;->c:Lcom/f$c;

    .line 6
    iput-object p4, p0, Lcom/f$p;->d:Lcom/f$h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/f$p;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Lgb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$p;->c(Landroid/view/View;)Lcom/f$p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/l$n;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/f$p;->e:Landroid/view/View;

    .line 2
    .line 3
    const-class v1, Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$q;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/f$p;->a:Lcom/f$k;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/f$p;->b:Lcom/f$e;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/f$p;->c:Lcom/f$c;

    .line 15
    .line 16
    iget-object v6, p0, Lcom/f$p;->d:Lcom/f$h;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/f$p;->e:Landroid/view/View;

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/f$q;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic build()Leb/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$p;->b()Lcom/l$n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/f$p;
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
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$p;->e:Landroid/view/View;

    .line 8
    .line 9
    return-object p0
.end method
