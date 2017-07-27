cmd_arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb :=  ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-gcc -E -Wp,-MD,arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.d.pre.tmp -nostdinc -I./arch/arm64/boot/dts -I./arch/arm64/boot/dts/include -I./include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.dts.tmp arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb -b 0 -i arch/arm64/boot/dts/  -d arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.d.dtc.tmp arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.dts.tmp ; cat arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.d.pre.tmp arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.d.dtc.tmp > arch/arm64/boot/dts/.exynos8890-hero2lte_eur_open_08.dtb.d

source_arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb := arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dts

deps_arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb := \
  arch/arm64/boot/dts/exynos8890-herolte_common.dtsi \
  arch/arm64/boot/dts/exynos8890.dtsi \
  include/dt-bindings/clock/exynos8890.h \
  include/dt-bindings/ufs/ufs.h \
  include/dt-bindings/sysmmu/sysmmu.h \
  include/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/exynos8890-pinctrl.dtsi \
  arch/arm64/boot/dts/exynos8890-busmon.dtsi \
  arch/arm64/boot/dts/exynos8890-ess.dtsi \
  arch/arm64/boot/dts/exynos8890-rmem.dtsi \
  arch/arm64/boot/dts/modem-ss335ap-pdata.dtsi \
  arch/arm64/boot/dts/exynos8890-display-lcd.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_gpio_07.dtsi \
  arch/arm64/boot/dts/exynos_gpio_config_macros.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_battery_eur_04.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_battery.dtsi \
  arch/arm64/boot/dts/exynos8890-sound-cs47l91.dtsi \
  arch/arm64/boot/dts/exynos8890-luckylte_mst.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_fingerprint-sensor_03.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_display_01.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_motor.dtsi \
  arch/arm64/boot/dts/exynos8890-hero2lte_svcled.dtsi \

arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb: $(deps_arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb)

$(deps_arch/arm64/boot/dts/exynos8890-hero2lte_eur_open_08.dtb):
