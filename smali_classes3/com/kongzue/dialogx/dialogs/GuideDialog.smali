.class public Lcom/kongzue/dialogx/dialogs/GuideDialog;
.super Lcom/kongzue/dialogx/dialogs/CustomDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;
    }
.end annotation


# instance fields
.field protected b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

.field protected c2:Landroid/graphics/drawable/Drawable;

.field protected d2:F

.field protected e2:Ljava/lang/Integer;

.field protected f2:Lcom/kongzue/dialogx/interfaces/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected g2:[I

.field h2:Landroid/view/View;

.field i2:[I

.field j2:Landroid/graphics/Paint;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>()V

    .line 2
    sget-object v0, Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;->CIRCLE_OUTSIDE:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->e2:Ljava/lang/Integer;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 5
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_alpha_enter:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 6
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    const/16 v0, 0x51

    .line 7
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(ILcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 53
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 74
    iput p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 75
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 56
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 78
    iput p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 79
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 59
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 82
    iput p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 83
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 10
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 62
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 63
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 20
    iput p4, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 66
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 67
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 23
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 25
    iput p4, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 70
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 71
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 28
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 30
    iput p4, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Lcom/kongzue/dialogx/interfaces/r;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 13
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 14
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 15
    iput p4, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 50
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    return-void
.end method

.method public static A4(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static B4(Landroid/graphics/Bitmap;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/graphics/Bitmap;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static C4(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static D4(Landroid/graphics/drawable/Drawable;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/graphics/drawable/Drawable;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static E4(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static F4(Landroid/view/View;II)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static G4(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static H4(Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static I4(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static J4(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static K4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static L4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static M4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;II)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static N4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static O4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/Bitmap;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static P4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static Q4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Landroid/graphics/drawable/Drawable;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static R4(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Lcom/kongzue/dialogx/interfaces/r;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;I)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Landroid/view/View;Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;Lcom/kongzue/dialogx/interfaces/r;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static S4(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static T4(Lcom/kongzue/dialogx/interfaces/r;Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;",
            ")",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static i3()Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private s3()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/high16 v1, -0x10000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 31
    .line 32
    return-object v0
.end method

.method public static x4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static y4(ILcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;-><init>(ILcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic A2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->S3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public A3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public bridge synthetic B2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->T3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B3(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public bridge synthetic C1(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic C2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->U3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public C3(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 5
    .line 6
    const/4 p2, 0x4

    .line 7
    new-array p2, p2, [I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public bridge synthetic D1()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->k3()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic D2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->V3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public D3(Landroid/view/View;IIIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p3, p4, p5, p6}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->C3(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public bridge synthetic E2(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->W3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public E3(II)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 4
    .line 5
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->W3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F2(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->X3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->u2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic G2(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->Y3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public G3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p1, p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic H2(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->Z3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public H3(IIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->a4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic I2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->a4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I3([I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic J2(J)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b4(J)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic K2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public K3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->r4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L2(J)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d4(J)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic M2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->e4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public M3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public N3(IIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 6
    .line 7
    return-object p0
.end method

.method public O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Q:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic O2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O3([I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public P3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-object p0
.end method

.method public Q1()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-object p0
.end method

.method public R3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-object p0
.end method

.method public S3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-object p0
.end method

.method public T3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->W:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic U2(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->i4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->FALSE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->V:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic V2(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public V3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic W2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->l4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public W3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic X2(IIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->m4(IIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic Y2(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->p4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public bridge synthetic Z2(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->q4(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Z3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->Y:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic a3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->r4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic b3(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->v4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b4(J)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic d3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->z4(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d4(J)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public e4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->S:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f4(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->N2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->v3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g3(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public g4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h3()Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->r4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public h4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->e2:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method protected i2([I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->i2:[I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Landroid/graphics/Canvas;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    aget v3, p1, v2

    .line 50
    .line 51
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 52
    .line 53
    aget v2, v4, v2

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    const/4 v2, 0x1

    .line 57
    aget v5, p1, v2

    .line 58
    .line 59
    aget v6, v4, v2

    .line 60
    .line 61
    add-int/2addr v5, v6

    .line 62
    const/4 v6, 0x2

    .line 63
    aget v7, p1, v6

    .line 64
    .line 65
    aget v8, v4, v6

    .line 66
    .line 67
    add-int/2addr v7, v8

    .line 68
    const/4 v8, 0x3

    .line 69
    aget v9, p1, v8

    .line 70
    .line 71
    aget v4, v4, v8

    .line 72
    .line 73
    add-int/2addr v9, v4

    .line 74
    div-int/lit8 v4, v7, 0x2

    .line 75
    .line 76
    div-int/lit8 v10, v9, 0x2

    .line 77
    .line 78
    iget-object v11, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 79
    .line 80
    if-eqz v11, :cond_4

    .line 81
    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    int-to-float v12, v3

    .line 87
    cmpl-float v11, v11, v12

    .line 88
    .line 89
    if-nez v11, :cond_2

    .line 90
    .line 91
    iget-object v11, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    int-to-float v13, v5

    .line 98
    cmpl-float v11, v11, v13

    .line 99
    .line 100
    if-eqz v11, :cond_4

    .line 101
    .line 102
    :cond_2
    iget-object v11, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .line 110
    if-nez v11, :cond_3

    .line 111
    .line 112
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .line 114
    invoke-direct {v11, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iput v7, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    .line 120
    iput v9, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 121
    .line 122
    :goto_0
    iget-object v13, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    iget-object v11, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v11, v12}, Landroid/view/View;->setX(F)V

    .line 130
    .line 131
    .line 132
    iget-object v11, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 133
    .line 134
    int-to-float v12, v5

    .line 135
    invoke-virtual {v11, v12}, Landroid/view/View;->setY(F)V

    .line 136
    .line 137
    .line 138
    :cond_4
    sget-object v11, Lcom/kongzue/dialogx/dialogs/GuideDialog$c;->a:[I

    .line 139
    .line 140
    iget-object v12, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    aget v11, v11, v12

    .line 147
    .line 148
    const/4 v12, 0x4

    .line 149
    if-eq v11, v2, :cond_9

    .line 150
    .line 151
    if-eq v11, v6, :cond_8

    .line 152
    .line 153
    if-eq v11, v8, :cond_7

    .line 154
    .line 155
    if-eq v11, v12, :cond_6

    .line 156
    .line 157
    const/4 v2, 0x5

    .line 158
    if-eq v11, v2, :cond_5

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_5
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    new-instance v6, Landroid/graphics/RectF;

    .line 167
    .line 168
    add-int/2addr v3, v4

    .line 169
    div-int/lit8 v4, v2, 0x2

    .line 170
    .line 171
    sub-int/2addr v3, v4

    .line 172
    int-to-float v7, v3

    .line 173
    add-int/2addr v5, v10

    .line 174
    sub-int/2addr v5, v4

    .line 175
    int-to-float v4, v5

    .line 176
    add-int/2addr v3, v2

    .line 177
    int-to-float v3, v3

    .line 178
    add-int/2addr v5, v2

    .line 179
    int-to-float v2, v5

    .line 180
    invoke-direct {v6, v7, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 181
    .line 182
    .line 183
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d2:F

    .line 184
    .line 185
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->s3()Landroid/graphics/Paint;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v1, v6, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    new-instance v6, Landroid/graphics/RectF;

    .line 198
    .line 199
    add-int/2addr v3, v4

    .line 200
    div-int/lit8 v4, v2, 0x2

    .line 201
    .line 202
    sub-int/2addr v3, v4

    .line 203
    int-to-float v7, v3

    .line 204
    add-int/2addr v5, v10

    .line 205
    sub-int/2addr v5, v4

    .line 206
    int-to-float v4, v5

    .line 207
    add-int/2addr v3, v2

    .line 208
    int-to-float v3, v3

    .line 209
    add-int/2addr v5, v2

    .line 210
    int-to-float v2, v5

    .line 211
    invoke-direct {v6, v7, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    .line 213
    .line 214
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d2:F

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->s3()Landroid/graphics/Paint;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v1, v6, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    new-instance v2, Landroid/graphics/RectF;

    .line 225
    .line 226
    int-to-float v4, v3

    .line 227
    int-to-float v6, v5

    .line 228
    add-int/2addr v3, v7

    .line 229
    int-to-float v3, v3

    .line 230
    add-int/2addr v5, v9

    .line 231
    int-to-float v5, v5

    .line 232
    invoke-direct {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 233
    .line 234
    .line 235
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d2:F

    .line 236
    .line 237
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->s3()Landroid/graphics/Paint;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    div-int/2addr v2, v6

    .line 250
    add-int/2addr v3, v4

    .line 251
    int-to-float v3, v3

    .line 252
    add-int/2addr v5, v10

    .line 253
    int-to-float v4, v5

    .line 254
    int-to-float v2, v2

    .line 255
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->s3()Landroid/graphics/Paint;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_9
    mul-int v2, v4, v4

    .line 264
    .line 265
    mul-int v6, v10, v10

    .line 266
    .line 267
    add-int/2addr v2, v6

    .line 268
    int-to-double v6, v2

    .line 269
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 270
    .line 271
    .line 272
    move-result-wide v6

    .line 273
    double-to-int v2, v6

    .line 274
    add-int/2addr v3, v4

    .line 275
    int-to-float v3, v3

    .line 276
    add-int/2addr v5, v10

    .line 277
    int-to-float v4, v5

    .line 278
    int-to-float v2, v2

    .line 279
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->s3()Landroid/graphics/Paint;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    .line 285
    .line 286
    :goto_1
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->j2:Landroid/graphics/Paint;

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 290
    .line 291
    .line 292
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->e2:Ljava/lang/Integer;

    .line 293
    .line 294
    if-nez v2, :cond_a

    .line 295
    .line 296
    sget v2, Lcom/kongzue/dialogx/R$color;->black50:I

    .line 297
    .line 298
    invoke-virtual {p0, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v(I)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    goto :goto_2

    .line 303
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    :goto_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 308
    .line 309
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    .line 329
    .line 330
    invoke-static {p1, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->i2:[I

    .line 335
    .line 336
    return-void
.end method

.method public i4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic j2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->w3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->X:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public k3()Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f2:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic l2()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->x3()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l3()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public l4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p1, p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public m3()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public m4(IIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public bridge synthetic n2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->y3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n3()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public n4(F)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d2:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic o2(Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->z3(Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o3()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public o4(Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p3()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g2:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public p4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic q2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->A3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q3()Lcom/kongzue/dialogx/interfaces/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->f2:Lcom/kongzue/dialogx/interfaces/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public q4(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method protected r0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    const/4 v2, -0x2

    .line 71
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/kongzue/dialogx/dialogs/GuideDialog$a;

    .line 78
    .line 79
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/GuideDialog$a;-><init>(Lcom/kongzue/dialogx/dialogs/GuideDialog;Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->q3()Lcom/kongzue/dialogx/interfaces/t;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    new-instance v0, Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 117
    .line 118
    new-instance v1, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog$b;-><init>(Lcom/kongzue/dialogx/dialogs/GuideDialog;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 147
    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h2:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic r2(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->C3(Landroid/view/View;I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r3()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->d2:F

    .line 2
    .line 3
    return v0
.end method

.method public r4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method protected s0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->e2:Ljava/lang/Integer;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/kongzue/dialogx/R$color;->black50:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    invoke-super {p0, v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public bridge synthetic s2(Landroid/view/View;IIIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->D3(Landroid/view/View;IIIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic t2(II)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->E3(II)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t3()Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->b2:Lcom/kongzue/dialogx/dialogs/GuideDialog$STAGE_LIGHT_TYPE;

    .line 2
    .line 3
    return-object v0
.end method

.method public t4(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic u2(Z)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->F3(Z)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u3()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public u4(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/GuideDialog;->c2:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic v2(IIII)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->N3(IIII)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public v4(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic w2([I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->O3([I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/kongzue/dialogx/interfaces/i;->run(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public w4()Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic x2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->P3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x3()Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic y1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->g3(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic y2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->Q3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/CustomDialog;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/GuideDialog;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic z1()Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->h3()Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic z2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/GuideDialog;->R3(I)Lcom/kongzue/dialogx/dialogs/GuideDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z3(Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->T:Lcom/kongzue/dialogx/dialogs/CustomDialog$ALIGN;

    .line 2
    .line 3
    return-object p0
.end method

.method public z4(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/GuideDialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
