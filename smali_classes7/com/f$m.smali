.class final Lcom/f$m;
.super Lcom/l$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;

.field private final d:Lcom/f$m;


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Landroid/view/View;)V
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
            "viewParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$m;->d:Lcom/f$m;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$m;->a:Lcom/f$k;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/f$m;->b:Lcom/f$e;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/f$m;->c:Lcom/f$c;

    .line 11
    .line 12
    return-void
.end method
