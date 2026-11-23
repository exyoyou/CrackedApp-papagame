.class final Lcom/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private b:Landroid/app/Service;


# direct methods
.method private constructor <init>(Lcom/f$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$i;->a:Lcom/f$k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/f$i;-><init>(Lcom/f$k;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Service;)Lgb/d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$i;->c(Landroid/app/Service;)Lcom/f$i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/l$g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/f$i;->b:Landroid/app/Service;

    .line 2
    .line 3
    const-class v1, Landroid/app/Service;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$j;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$i;->a:Lcom/f$k;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/f$i;->b:Landroid/app/Service;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/f$j;-><init>(Lcom/f$k;Landroid/app/Service;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic build()Leb/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$i;->b()Lcom/l$g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Landroid/app/Service;)Lcom/f$i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/app/Service;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$i;->b:Landroid/app/Service;

    .line 8
    .line 9
    return-object p0
.end method
