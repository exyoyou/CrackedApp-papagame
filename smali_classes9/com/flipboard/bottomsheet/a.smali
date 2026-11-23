.class public abstract Lcom/flipboard/bottomsheet/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flipboard/bottomsheet/c;


# static fields
.field public static final a:F = 0.7f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(FFFLcom/flipboard/bottomsheet/BottomSheetLayout;Landroid/view/View;)F
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
            "translation",
            "maxTranslation",
            "peekedTranslation",
            "parent",
            "view"
        }
    .end annotation

    .line 1
    div-float/2addr p1, p2

    const p2, 0x3f333333    # 0.7f

    mul-float p1, p1, p2

    return p1
.end method
