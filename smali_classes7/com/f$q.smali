.class final Lcom/f$q;
.super Lcom/l$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;

.field private final d:Lcom/f$h;

.field private final e:Lcom/f$q;


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl",
            "viewParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$q;->e:Lcom/f$q;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$q;->a:Lcom/f$k;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/f$q;->b:Lcom/f$e;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/f$q;->c:Lcom/f$c;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/f$q;->d:Lcom/f$h;

    .line 13
    .line 14
    return-void
.end method
