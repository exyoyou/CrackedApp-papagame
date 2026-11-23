.class public Lme/relex/circleindicator/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/b$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I
    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field e:I
    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field f:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field g:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field h:I

.field i:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lme/relex/circleindicator/b;->a:I

    .line 6
    .line 7
    iput v0, p0, Lme/relex/circleindicator/b;->b:I

    .line 8
    .line 9
    iput v0, p0, Lme/relex/circleindicator/b;->c:I

    .line 10
    .line 11
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    .line 12
    .line 13
    iput v0, p0, Lme/relex/circleindicator/b;->d:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lme/relex/circleindicator/b;->e:I

    .line 17
    .line 18
    sget v1, Lme/relex/circleindicator/R$drawable;->white_radius:I

    .line 19
    .line 20
    iput v1, p0, Lme/relex/circleindicator/b;->f:I

    .line 21
    .line 22
    iput v0, p0, Lme/relex/circleindicator/b;->h:I

    .line 23
    .line 24
    const/16 v0, 0x11

    .line 25
    .line 26
    iput v0, p0, Lme/relex/circleindicator/b;->i:I

    .line 27
    .line 28
    return-void
.end method
